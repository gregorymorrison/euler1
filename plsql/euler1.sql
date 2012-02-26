create or replace FUNCTION euler1 (n IN NUMBER)
   RETURN NUMBER
IS
    retval NUMBER(10);
BEGIN
    retval := 0;

   FOR i IN 1 .. n LOOP
     IF MOD(i,3)=0 or MOD(i,5)=0 THEN
            retval := retval + i;
     END IF;
   END LOOP;

   RETURN retval;
END EULER1;


DECLARE
  v_Return NUMBER;
BEGIN
  v_Return := EULER1(999);
  DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
END;