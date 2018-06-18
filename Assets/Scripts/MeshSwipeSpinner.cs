using UnityEngine;
using System.Collections;

public class MeshSwipeSpinner : MonoBehaviour
{

    public GameObject objectToSpin;
    public float rotationMultiplier;
    public float rotationFriction;

    Vector2 rotationSpeed;

    private Gyroscope gyro;

    private bool isPortrait = true;
    private float rotX, rotY;

    private void OnEnable()
    {
        gyro = Input.gyro;
        gyro.enabled = true;
    }

    private void OnDisable()
    {
    }

    private void Awake()
    {
        if (Input.deviceOrientation == DeviceOrientation.Portrait)
        {
            isPortrait = true;
        }
        else if (Input.deviceOrientation == DeviceOrientation.LandscapeLeft)
        {
            isPortrait = false;
        }
    }

    void Update()
    {

        if (Input.touchCount == 1)
        {
            Touch touch0 = Input.GetTouch(0);

            //Checking If touching collider
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit, 100))
            {

                //print("Hit something!: " + hit.transform.gameObject.name);

                if (hit.transform == this.transform) {
                    print("this transform: " + this.transform.gameObject.name);

                    if (touch0.phase == TouchPhase.Moved)
                    {
                        if (isPortrait)
                        {
                            rotX = touch0.deltaPosition.y;
                        }


                        rotationSpeed.x = rotX;

                    }

                }



            }
                


            /*
            if (touch0.phase == TouchPhase.Moved)
            {
                if (isPortrait)
                {
                    rotX = touch0.deltaPosition.y;
                }


                rotationSpeed.x = rotX;

            }
            */
        }
        

        rotationSpeed = Vector2.Lerp(rotationSpeed, Vector2.zero, rotationFriction);
        objectToSpin.transform.Rotate(0f, -rotationSpeed.x * rotationMultiplier, 0f, Space.Self);
    }
    }

