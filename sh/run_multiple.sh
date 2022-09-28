# summarize base
for LANGUAGE in ruby javascript go python java php
do
    python run_exp.py --model_tag codet5_base\
        --task summarize --sub_task ${LANGUAGE}\
        --model summarize_${LANGUAGE}_codet5_base.bin
done

# summarize large
for LANGUAGE in ruby javascript go python java php
do
    python run_exp.py --model_tag codet5_large\
        --task summarize --sub_task ${LANGUAGE}\
        --model summarize_${LANGUAGE}_codet5_large.bin
done

# concode base
python run_exp.py --model_tag codet5_base\
    --task concode --sub_task none\
    --model concode_codet5_base.bin

#concode large
python run_exp.py --model_tag codet5_large\
    --task concode --sub_task none\
    --model concode_codet5_large.bin

# translate base
python run_exp.py --model_tag codet5_base\
    --task translate --sub_task java-cs\
    --model translate_java_cs_codet5_base.bin

python run_exp.py --model_tag codet5_base\
    --task translate --sub_task cs-java\
    --model translate_cs_java_codet5_base.bin

# translate large
python run_exp.py --model_tag codet5_large\
    --task translate --sub_task java-cs\
    --model translate_java_cs_codet5_large.bin

python run_exp.py --model_tag codet5_large\
    --task translate --sub_task cs-java\
    --model translate_cs_java_codet5_large.bin

# refine base
python run_exp.py --model_tag codet5_base\
    --task refine --sub_task small\
    --model refine_small_codet5_base.bin

python run_exp.py --model_tag codet5_base\
    --task refine --sub_task medium\
    --model refine_medium_codet5_base.bin

# refine large
python run_exp.py --model_tag codet5_large\
    --task refine --sub_task small\
    --model refine_small_codet5_large.bin

python run_exp.py --model_tag codet5_large\
    --task refine --sub_task medium\
    --model refine_medium_codet5_large.bin

# defect base
python run_exp.py --model_tag codet5_base\
    --task defect --sub_task none\
    --model defect_codet5_base.bin
