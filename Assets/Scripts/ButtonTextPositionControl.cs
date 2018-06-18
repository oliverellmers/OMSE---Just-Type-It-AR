using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.Extensions;
using DG.Tweening;

public class ButtonTextPositionControl : MonoBehaviour {

    public Canvas mainCanvas;

    public RectTransform navButtonsTransform;
    public RectTransform btnLText;
    public Button btnL;
    public RectTransform btnRText;
    public Button btnR;

    public HorizontalScrollSnap horizontalSN;
  
    
    private float dist;
    private float textDist;
    private bool left = true;

    void Awake()
    {
        dist = Screen.width / 5;
        Debug.Log("screen.width: " + Screen.width);

        //textDist = Screen.width / 3;
        //textDist = dist * 2;
        textDist = mainCanvas.GetComponent<RectTransform>().sizeDelta.x / 3;

        horizontalSN.OnSelectionPageChangedEvent.AddListener(OnPageChanged);
    }

    void Update() {

        if (!left)
        {
            navButtonsTransform.DOLocalMoveX(-dist, 0.25f);
            
            ///*
            //btnLText.DOLocalMoveX(textDist * 1.2f, 0.25f);


			btnLText.DOLocalMoveX(textDist * 1.05f, 0.25f);
            btnRText.DOLocalMoveX(textDist, 0.25f);
            //*/

            /*
            btnLText.DOLocalMoveX(textDist, 0.25f);
            btnRText.DOLocalMoveX(textDist, 0.25f);
            */
        }

        if (left) {
            navButtonsTransform.DOLocalMoveX(dist, 0.25f);
            
            ///*
            //btnLText.DOLocalMoveX(textDist / 1.5f , 0.25f);
			btnLText.DOLocalMoveX(textDist / 2.5f , 0.25f);
            btnRText.DOLocalMoveX((textDist * 0.85f) / 2, 0.25f);
            //*/

            /*
            btnLText.DOLocalMoveX(textDist /2, 0.25f);
            btnRText.DOLocalMoveX(textDist /2, 0.25f);
            */
        }
    }

    void OnPageChanged(int page) {
        //Debug.Log("page changed: " + page);
        if (page == 0)
        {
            btnL.onClick.Invoke();
        }

        if(page == 1) {
            btnR.onClick.Invoke();
        }
    }

    public void IsLeft(bool l) {
        left = l;
    }
}
