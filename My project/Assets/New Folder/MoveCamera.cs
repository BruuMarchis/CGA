using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCamera : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.localPosition.x >= 4.0f)
        {
            transform.localPosition = new Vector3(4.0f, transform.localPosition.y, transform.localPosition.z);
        }
        if (transform.localPosition.x <= -4.0f)
        {
            transform.localPosition = new Vector3(-4.0f, transform.localPosition.y, transform.localPosition.z);
        }



        if (transform.localPosition.y >= 5.0f)
        {
            transform.localPosition = new Vector3(transform.localPosition.x, 5.0f, transform.localPosition.z);
        }
        if (transform.localPosition.y <= 4.0f)
        {
            transform.localPosition = new Vector3(transform.localPosition.x, 4.0f, transform.localPosition.z);
        }



        if (transform.localPosition.z >= 4.0f)
        {
            transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, 4.0f);
        }
        if (transform.localPosition.z <= -1.0f)
        {
            transform.localPosition = new Vector3(transform.localPosition.x, transform.localPosition.y, -1.0f);
        }
    }
}
