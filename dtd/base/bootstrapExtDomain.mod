<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Bootstrap Extension Domain                    -->
<!--  DATE:      March 2026                                        -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    COMMON DECORATION ATTRIBUTES              -->
<!ENTITY % bootstrap-ext-decoration-atts
  "margin CDATA #IMPLIED
   padding CDATA #IMPLIED
   shadow (yes | no | sm | lg | none) #IMPLIED
   indicators (yes | no | round) #IMPLIED
   width (5 | 10 | 15 | 20 | 25 | 30 | 35 | 40 | 45 | 50 | 55 | 60 | 65 | 70 | 75 | 80 | 85 | 90 | 95 | 100 | auto) #IMPLIED
   border (yes | no | top | bottom | start | end | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 20) #IMPLIED
   rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | 6 | circle | pill) #IMPLIED
   bordercolor (primary | secondary | success | danger | warning | info | light | dark | fresh | gold | chocolate | velvet | dream | night | sky | rose | cream) #IMPLIED"
>



<!--                    COUNTER                                   -->
<!ENTITY % counter.content "(%ph.cnt;)*">
<!ENTITY % counter.attributes "outputclass CDATA 'counter' target CDATA #IMPLIED otherprops CDATA #IMPLIED %bootstrap-ext-decoration-atts; %univ-atts;">
<!ELEMENT counter %counter.content;>
<!ATTLIST counter %counter.attributes;>

<!--                    PARALLAX                                  -->
<!ENTITY % parallax.content "(%section.cnt;)*">
<!ENTITY % parallax.attributes "outputclass CDATA 'parallax' href CDATA #IMPLIED speed CDATA #IMPLIED scope (local | external | peer | -dita-use-conref-target) #IMPLIED otherprops CDATA #IMPLIED %bootstrap-ext-decoration-atts; %univ-atts;">
<!ELEMENT parallax %parallax.content;>
<!ATTLIST parallax %parallax.attributes;>

<!--                    SLIDER                                    -->
<!ENTITY % slider.content "(%section;)*">
<!ENTITY % slider.attributes "outputclass CDATA 'slider' otherprops CDATA #IMPLIED %bootstrap-ext-decoration-atts; %univ-atts;">
<!ELEMENT slider %slider.content;>
<!ATTLIST slider %slider.attributes;>

<!--                    WHITEBOX                                  -->
<!ENTITY % whitebox.content "(%li; | %whitebox-item;)*">
<!ENTITY % whitebox.attributes "outputclass CDATA 'whitebox' otherprops CDATA #IMPLIED %bootstrap-ext-decoration-atts; %univ-atts;">
<!ELEMENT whitebox %whitebox.content;>
<!ATTLIST whitebox %whitebox.attributes;>

<!--                    WHITEBOX-ITEM                             -->
<!ENTITY % whitebox-item.content "(%section.cnt;)*">
<!ENTITY % whitebox-item.attributes "outputclass CDATA 'whitebox-item' %bootstrap-ext-decoration-atts; %univ-atts;">
<!ELEMENT whitebox-item %whitebox-item.content;>
<!ATTLIST whitebox-item %whitebox-item.attributes;>

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST counter class CDATA "+ topic/ph bootstrap-ext-d/counter ">
<!ATTLIST parallax class CDATA "+ topic/section bootstrap-ext-d/parallax ">
<!ATTLIST slider class CDATA "+ topic/bodydiv bootstrap-ext-d/slider ">
<!ATTLIST whitebox class CDATA "+ topic/ul bootstrap-ext-d/whitebox ">
<!ATTLIST whitebox-item class CDATA "+ topic/li bootstrap-ext-d/whitebox-item ">
