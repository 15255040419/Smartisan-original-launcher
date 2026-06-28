.class synthetic Landroid/icu/text/PluralRules$2;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$PluralRules$Operand:[I

.field static final synthetic $SwitchMap$android$icu$text$PluralRules$SampleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1647
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->values()[Landroid/icu/text/PluralRules$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$SampleType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$SampleType:[I

    sget-object v2, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$SampleType:[I

    sget-object v3, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v3}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 837
    :catch_1
    invoke-static {}, Landroid/icu/text/PluralRules$Operand;->values()[Landroid/icu/text/PluralRules$Operand;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    :try_start_2
    sget-object v2, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v3, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v3}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
