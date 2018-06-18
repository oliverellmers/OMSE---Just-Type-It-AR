using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SphereFollowTouchPosition : MonoBehaviour {

    public Transform surface;
    public Camera arCam;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //transform.position = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0.5f));
        //Vector3 pXY = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0f));
        //float dist = Vector3.Distance(surface.localPosition, transform.localPosition);

        RaycastHit hit;
        Ray ray = arCam.ScreenPointToRay(Input.mousePosition);

        //Physics.Raycast(ray, out hit);

        if (Input.touchCount != 0)
        {
            if (Physics.Raycast(ray, out hit))
            {
                if (hit.transform.tag == "vectorGrid")
                {
                    transform.position = hit.point;
                }
                else {
                    transform.position = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0.5f));
                }
            }
        }
        else {
            transform.position = new Vector3(50f, 50f, 50f);
        }
        


    }
}
