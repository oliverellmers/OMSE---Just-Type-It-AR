using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.Extensions;

public class VerticalScrollExtendBehaviour : MonoBehaviour {

    public VerticalScrollSnap vzs;

	// Use this for initialization
	void Start () {
        vzs.StartingScreen = vzs.ChildObjects.Length;

    }
	
}
