*** Settings ***
Library    RPA.PDF

*** Test Cases ***
PDF Automation
# The below line reads all figures page wise
#under each page there could multiple images
     &{figures}=  Get All Figures    E:/reader.pdf
     FOR    ${key}    ${value}   IN    &{figures}
        Log    Key: ${key}, Value: ${value}
        FOR    ${fkey}    ${fvalue}    IN     &{value}
            Save figure as image    
        ...    figure=${fvalue}    
        ...    images_folder=e:/robotimages/newone  
        ...    file_prefix=${fkey}${key}
        END
        
     END
         