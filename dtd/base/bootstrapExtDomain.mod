<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Bootstrap Extension Domain                    -->
<!--  DATE:      March 2026                                        -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    ELEMENT NAME ENTITIES                      -->
<!-- ============================================================= -->

<!ENTITY % counter "counter">
<!ENTITY % parallax "parallax">
<!ENTITY % slider "slider">
<!ENTITY % whitebox "whitebox">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    COUNTER                                   -->
<!ENTITY % counter.content "(%ph.cnt;)*">
<!ENTITY % counter.attributes "outputclass CDATA 'counter' target CDATA #IMPLIED otherprops CDATA #IMPLIED %univ-atts;">
<!ELEMENT counter %counter.content;>
<!ATTLIST counter %counter.attributes;>

<!--                    PARALLAX                                  -->
<!ENTITY % parallax.content "(%section.cnt;)*">
<!ENTITY % parallax.attributes "outputclass CDATA 'parallax' href CDATA #IMPLIED speed CDATA #IMPLIED scope (local | external | peer | -dita-use-conref-target) #IMPLIED otherprops CDATA #IMPLIED %univ-atts;">
<!ELEMENT parallax %parallax.content;>
<!ATTLIST parallax %parallax.attributes;>

<!--                    SLIDER                                    -->
<!ENTITY % slider.content "(%section;)*">
<!ENTITY % slider.attributes "outputclass CDATA 'slider' otherprops CDATA #IMPLIED %univ-atts;">
<!ELEMENT slider %slider.content;>
<!ATTLIST slider %slider.attributes;>

<!--                    WHITEBOX                                  -->
<!ENTITY % whitebox.content "(%li;)*">
<!ENTITY % whitebox.attributes "outputclass CDATA 'whitebox' otherprops CDATA #IMPLIED %univ-atts;">
<!ELEMENT whitebox %whitebox.content;>
<!ATTLIST whitebox %whitebox.attributes;>

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST counter class CDATA "+ topic/ph bs-ext-d/counter ">
<!ATTLIST parallax class CDATA "+ topic/section bs-ext-d/parallax ">
<!ATTLIST slider class CDATA "+ topic/bodydiv bs-ext-d/slider ">
<!ATTLIST whitebox class CDATA "+ topic/ul bs-ext-d/whitebox ">

<!--                    CAROUSEL OVERRIDE                         -->
<!ATTLIST carousel indicators CDATA #IMPLIED>
