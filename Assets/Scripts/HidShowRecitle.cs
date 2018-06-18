using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Vuforia;

public class HidShowRecitle : MonoBehaviour, ITrackableEventHandler {

    protected TrackableBehaviour mTrackableBehaviour;

    [SerializeField]
    private MeshRenderer reticleCircle;

    [SerializeField]
    private TransitionManager transitionManager;

    private bool is360 = false;

    // Use this for initialization
    void Start () {
        reticleCircle.enabled = false;

        mTrackableBehaviour = GetComponent<TrackableBehaviour>();
        if (mTrackableBehaviour)
            mTrackableBehaviour.RegisterTrackableEventHandler(this);
    }

    public void OnTrackableStateChanged(
        TrackableBehaviour.Status previousStatus,
        TrackableBehaviour.Status newStatus)
    {
        if (newStatus == TrackableBehaviour.Status.DETECTED ||
            newStatus == TrackableBehaviour.Status.TRACKED ||
            newStatus == TrackableBehaviour.Status.EXTENDED_TRACKED)
        {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " found");
            OnTrackingFound();
        }
        else if (previousStatus == TrackableBehaviour.Status.TRACKED &&
                 newStatus == TrackableBehaviour.Status.NOT_FOUND)
        {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " lost");
            OnTrackingLost();
        }
        else
        {
            // For combo of previousStatus=UNKNOWN + newStatus=UNKNOWN|NOT_FOUND
            // Vuforia is starting, but tracking has not been lost or found yet
            // Call OnTrackingLost() to hide the augmentations
            OnTrackingLost();
        }
    }

    private void OnTrackingFound() {
        reticleCircle.enabled = true;
    }

    private void OnTrackingLost() {

        if (is360)// && reticleCircle.enabled == true)
        {
            reticleCircle.enabled = false;
        }

    }

    // Update is called once per frame
    void Update () {
        is360 = transitionManager.InAR;
        //Debug.Log("transitionManager.InAR: " + transitionManager.InAR);

    }
}


