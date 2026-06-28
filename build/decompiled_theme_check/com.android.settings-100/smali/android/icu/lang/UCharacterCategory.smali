.class public final Landroid/icu/lang/UCharacterCategory;
.super Ljava/lang/Object;
.source "UCharacterCategory.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unassigned"

    return-object p0

    :pswitch_0
    const-string p0, "Punctuation, Final quote"

    return-object p0

    :pswitch_1
    const-string p0, "Punctuation, Initial quote"

    return-object p0

    :pswitch_2
    const-string p0, "Symbol, Other"

    return-object p0

    :pswitch_3
    const-string p0, "Symbol, Modifier"

    return-object p0

    :pswitch_4
    const-string p0, "Symbol, Currency"

    return-object p0

    :pswitch_5
    const-string p0, "Symbol, Math"

    return-object p0

    :pswitch_6
    const-string p0, "Punctuation, Other"

    return-object p0

    :pswitch_7
    const-string p0, "Punctuation, Connector"

    return-object p0

    :pswitch_8
    const-string p0, "Punctuation, Close"

    return-object p0

    :pswitch_9
    const-string p0, "Punctuation, Open"

    return-object p0

    :pswitch_a
    const-string p0, "Punctuation, Dash"

    return-object p0

    :pswitch_b
    const-string p0, "Other, Surrogate"

    return-object p0

    :pswitch_c
    const-string p0, "Other, Private Use"

    return-object p0

    :pswitch_d
    const-string p0, "Other, Format"

    return-object p0

    :pswitch_e
    const-string p0, "Other, Control"

    return-object p0

    :pswitch_f
    const-string p0, "Separator, Paragraph"

    return-object p0

    :pswitch_10
    const-string p0, "Separator, Line"

    return-object p0

    :pswitch_11
    const-string p0, "Separator, Space"

    return-object p0

    :pswitch_12
    const-string p0, "Number, Other"

    return-object p0

    :pswitch_13
    const-string p0, "Number, Letter"

    return-object p0

    :pswitch_14
    const-string p0, "Number, Decimal Digit"

    return-object p0

    :pswitch_15
    const-string p0, "Mark, Spacing Combining"

    return-object p0

    :pswitch_16
    const-string p0, "Mark, Enclosing"

    return-object p0

    :pswitch_17
    const-string p0, "Mark, Non-Spacing"

    return-object p0

    :pswitch_18
    const-string p0, "Letter, Other"

    return-object p0

    :pswitch_19
    const-string p0, "Letter, Modifier"

    return-object p0

    :pswitch_1a
    const-string p0, "Letter, Titlecase"

    return-object p0

    :pswitch_1b
    const-string p0, "Letter, Lowercase"

    return-object p0

    :pswitch_1c
    const-string p0, "Letter, Uppercase"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
