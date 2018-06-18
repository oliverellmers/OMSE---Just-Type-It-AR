using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantRotationX : MonoBehaviour {

    private float deltaTime = 0;

    void Awake() {
        deltaTime = Time.deltaTime;
    }
	// Update is called once per frame
	void Update () {
        // Rotate the object around its local X axis at 1 degree per second
        transform.Rotate(Vector3.left * deltaTime * 20f);

        // ...also rotate around the World's Y axis
        //transform.Rotate(Vector3.up * deltaTime, Space.World);
    }
}
