using System;
using System.Collections;
using UnityEngine;

public class DeviceChange : MonoBehaviour
{
    public static event Action<Vector2> OnResolutionChange;
    public static event Action<DeviceOrientation> OnOrientationChange;
    public static float CheckDelay = 0.5f;        

    static Vector2 resolution;                    
    static DeviceOrientation orientation;        
    static bool isAlive = true;                    

    void Awake()
    {
        //StartCoroutine(CheckForChange());
    }

    private void OnEnable()
    {
        StartCoroutine(CheckForChange());
    }

    IEnumerator CheckForChange()
    {
        
        resolution = new Vector2(Screen.width, Screen.height);
        orientation = Input.deviceOrientation;

        while (isAlive)
        {

            // Check for a Resolution Change
            if (resolution.x != Screen.width || resolution.y != Screen.height)
            {
                resolution = new Vector2(Screen.width, Screen.height);
                if (OnResolutionChange != null) OnResolutionChange(resolution);
            }

            // Check for an Orientation Change
            switch (Input.deviceOrientation)
            {
                case DeviceOrientation.Unknown:            
                case DeviceOrientation.FaceUp:            
                case DeviceOrientation.FaceDown:        
                    break;
                default:
                    if (orientation != Input.deviceOrientation)
                    {
                        orientation = Input.deviceOrientation;
                        if (OnOrientationChange != null) OnOrientationChange(orientation);
                    }
                    break;
            }
            //Debug.Log("Device Oritentation: " + orientation);
            yield return new WaitForSeconds(CheckDelay);
        }
    }

    /*
    void OnDestroy()
    {
        isAlive = false;
    }
    */
    

}