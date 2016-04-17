<div style="background: white; overflow: auto; width: auto; color: black; border: solid gray; border-width: .1em .1em .1em .8em; padding: .2em .6em;">
<pre style="margin: 0; line-height: 125%;">      <span style="color: #339966;"><em> * Euler1 <span style="font-weight: bold;">in</span> COBOL</em></span>

       <span style="color: #003333; font-weight: bold;">IDENTIFICATION DIVISION</span>.
       <span style="color: #003333; font-weight: bold;">PROGRAM-ID</span>. <span style="color: #800000;">myTest</span>.
       <span style="color: #003333; font-weight: bold;">DATA DIVISION</span>.
       <span style="color: #003333; font-weight: bold;">WORKING-STORAGE SECTION</span>.
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">cnt </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">4</span>) <span style="color: #003333; font-weight: bold;">VALUE</span> <span style="color: #ff6600;">999</span>.
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">result </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">9</span>).
       <span style="color: #003333; font-weight: bold;">PROCEDURE DIVISION</span>.
           <span style="color: #003333;">CALL</span> <span style="color: #800000;">"euler1"</span> <span style="color: #003333;">USING BY CONTENT <span style="color: #800080;">cnt</span>, </span>
                               <span style="color: #003333;">BY</span> <span style="color: #003333;">REFERENCE</span> <span style="color: #800080;">result</span>.
           <span style="color: #003333;">DISPLAY</span> <span style="color: #800080;">result</span>.
           <span style="color: #006699; font-weight: bold;">STOP RUN</span>.
       <span style="color: #003333; font-weight: bold;">END PROGRAM</span> <span style="color: #800000;">myTest</span>.

       <span style="color: #003333; font-weight: bold;">IDENTIFICATION DIVISION</span>.
       <span style="color: #003333; font-weight: bold;">PROGRAM-ID</span>. <span style="color: #800000;">euler1</span>.
       <span style="color: #003333; font-weight: bold;">DATA DIVISION</span>.
       <span style="color: #003333; font-weight: bold;">WORKING-STORAGE SECTION</span>.
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">quot </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">3</span>) <span style="color: #003333; font-weight: bold;">VALUE</span> <span style="color: #ff6600;">0</span>.
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">rem </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">3</span>) <span style="color: #003333; font-weight: bold;">VALUE</span> <span style="color: #ff6600;">0</span>.
       <span style="color: #003333;">LINKAGE</span> <span style="color: #003333;">SECTION</span>.
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">cnt </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">4</span>).
       <span style="color: #ff6600;">01</span>  <span style="color: #800080;">result </span> <span style="color: #003333;">PIC 9</span>(<span style="color: #ff6600;">9</span>) <span style="color: #006699; font-weight: bold;">VALUE</span> <span style="color: #ff6600;">0</span>.
       <span style="color: #003333;">PROCEDURE</span> <span style="color: #003333;">DIVISION</span> <span style="color: #006699; font-weight: bold;">USING</span> <span style="color: #800080;">cnt</span>, <span style="color: #800080;">result</span>.
           <span style="color: #006699; font-weight: bold;">PERFORM</span> <span style="color: #cc00ff;">UNTIL</span> <span style="color: #800080;">cnt</span> <span style="color: #555555;">&lt;=</span> <span style="color: #ff6600;">0</span> 
               <span style="color: #006699; font-weight: bold;">DIVIDE</span> <span style="color: #ff6600;">3</span> <span style="color: #006699; font-weight: bold;">INTO</span> <span style="color: #800080;">cnt</span> <strong><span style="color: #003333;">GIVING</span></strong> <span style="color: #800080;">quot</span> <strong><span style="color: #003333;">REMAINDER</span></strong> <span style="color: #800080;">rem</span>
               <span style="color: #006699; font-weight: bold;">IF</span> <span style="color: #800080;">rem</span> <span style="color: #555555;">=</span> <span style="color: #ff6600;">0</span> <span style="color: #003333;">THEN</span>
                   <span style="color: #006699; font-weight: bold;">ADD</span> <span style="color: #800080;">cnt</span> <span style="color: #006699; font-weight: bold;">TO</span> <span style="color: #003333;">result</span>
               <span style="color: #006699; font-weight: bold;">ELSE</span>
                   <span style="color: #006699; font-weight: bold;">DIVIDE</span> <span style="color: #ff6600;">5</span> <span style="color: #006699; font-weight: bold;">INTO</span> <span style="color: #800080;">cnt</span> <strong><span style="color: #003333;">GIVING</span></strong> <span style="color: #800080;">quot</span> <strong><span style="color: #003333;">REMAINDER</span></strong> <span style="color: #800080;">rem</span>
                   <span style="color: #006699; font-weight: bold;">IF</span> <span style="color: #800080;">rem</span> <span style="color: #555555;">=</span> <span style="color: #ff6600;">0</span> <span style="color: #003333;">THEN</span>
                       <span style="color: #006699; font-weight: bold;">ADD</span> <span style="color: #800080;">cnt</span> <span style="color: #006699; font-weight: bold;">TO</span> <span style="color: #800080;">result</span>
                   <span style="color: #003333;">END</span><span style="color: #555555;">-</span><span style="color: #003333;">IF</span>
               <span style="color: #003333;">END</span><span style="color: #555555;">-</span><span style="color: #003333;">IF</span>

               <span style="color: #006699; font-weight: bold;">ADD</span> <span style="color: #555555;">-</span><span style="color: #ff6600;">1</span> <span style="color: #006699; font-weight: bold;">TO</span> <span style="color: #800080;">cnt</span>
           <strong><span style="color: #003333;">END</span><span style="color: #555555;">-</span><span style="color: #006699;">PERFORM</span> <span style="color: #cc00ff;">EXIT</span> <span style="color: #006699;">PROGRAM</span>.</strong>
       <strong><span style="color: #003333;">END</span> <span style="color: #006699;">PROGRAM</span></strong> <span style="color: #800000;">euler1</span>.</pre>
</div>
There's a version of COBOL available for Windows, Linux, and OSX called <a title="OpenCOBOL" href="http://www.opencobol.org/">OpenCOBOL</a>. It converts your COBOL into C which it then hands off to gcc, so you'll also need that installed also. You can grab it with <a title="yum" href="http://www.cyberciti.biz/faq/rhel-centos-fedora-linux-yum-command-howto/">yum</a> as <em>open-cobol</em>, along with additional dependencies <em>libdb</em> and <em>libdb-devel</em> if you don't already have those. To compile your code, run <em>cobc</em>, passing it your file as an argument. Then simply run the resulting object file:
<div style="background: black; overflow: auto; width: auto; color: white; border: solid gray; border-width: .1em .1em .1em .8em; padding: .2em .6em;">
<pre style="line-height: 125%; margin: 0;"><span style="color: #ffffff;">$ cobc -x Euler1.cob</span></pre>
<pre style="line-height: 125%; margin: 0;">$ ./Euler1
<span style="color: #00ccff;">233168</span></pre>
</div>