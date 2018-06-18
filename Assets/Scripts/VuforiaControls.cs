using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI.Extensions;
using Vuforia;
using DG.Tweening;

public class VuforiaControls : MonoBehaviour {

    public HorizontalScrollSnap hsn;

    //private Transform backgroundTexture;
    private bool p = false;
    private bool s = false;
    private Coroutine co;
    private bool coIsRunning = false;

	void Awake () {
        //VuforiaBehaviour.Instance.enabled = false;
        hsn.OnSelectionChangeEndEvent.AddListener(OnPageEndSwipe);
        hsn.OnSelectionPageChangedEvent.AddListener(OnPageSwipe);
        //StartCoroutine(FindBackgroundPlane());
    }

    IEnumerator FindBackgroundPlane() {
        yield return new WaitForSeconds(1f);
        //backgroundTexture = GameObject.Find("BackgroundPlane").GetComponent<Transform>();
    }
	
	void Update () {
        if (!s)
        {
            //backgroundTexture.DOLocalMoveX(420f, 0.35f);
        }
        else {
            //backgroundTexture.DOLocalMoveX(0f, 0.35f);
        }
		
	}

    public void OnPageSwipe(int i)
    {
        if (i == 0)
        {
            s = false;
        }
        else
        {
            s = true;
        }
    }

    public void OnPageEndSwipe(int i) {
        if (i == 0)
        {
            p = false;
            /*
            if (coIsRunning) {
                StopCoroutine(co);
                coIsRunning = false;
            }
            co = StartCoroutine(PlayPauseVuforia(p));
            */
        }
        else {
            p = true;
            /*
            if (coIsRunning)
            {
                StopCoroutine(co);
                coIsRunning = false;
            }
            co = StartCoroutine(PlayPauseVuforia(p));
            */
        }
    }

    IEnumerator PlayPauseVuforia(bool pause) {
        coIsRunning = true;
        if (pause)
        {
            VuforiaBehaviour.Instance.enabled = true;
        }
        else {
            VuforiaBehaviour.Instance.enabled = false;
        }
        yield return null;
    }
}
