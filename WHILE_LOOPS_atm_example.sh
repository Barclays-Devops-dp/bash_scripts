#the while loop repeatedly as long as the condition is true
# while [ condition ]; do
#     # code to execute as long as the condition is true 
# done

# num=1
# while [ 2 -gt 1 ]; do
#     # code to execute as long as the condition is true 
#     # echo "yes, 2 is always greater than 1"
#     ((num++))
#     echo "num is now: "$num
    
# done


# ATM logic. card 
region="London"
postcode_distance=10
travelling_units=1
while [[ $region == "London" ]] && [[  $postcode_distance -eq 10 ]]; do
    # code to execute as long as the condition is true 
    # echo "yes, 2 is always greater than 1"
    echo "You are still using your ATM in UK"
    ((travelling_units++))  # increase travel distance by 1 unit
    echo "you have travelled : $travelling_units away from home"

     echo "current region: $region"
     echo "current postcode_distance: $postcode_distance"

  
      if [[ $travelling_units -gt 10 ]]; then
        region=greece
        postcode_distance=1100
        echo "i am a changing the values"
    fi
    if [[ $region != "London" ]] || [[  $postcode_distance -gt 10 ]]; then
        echo "!!!!!!!!!!!!!!!!!!!!!!!!!you are outside the UK!"
        echo "!!!!!!!!!!!!!!!!!!!card is being blocked from a foreign location"
        # break #break 
    fi


  if [[ $travelling_units -gt 10 ]]; then
        region="London"
         postcode_distance=10
    fi

done
