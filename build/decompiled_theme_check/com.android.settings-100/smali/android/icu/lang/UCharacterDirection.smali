.class public final Landroid/icu/lang/UCharacterDirection;
.super Ljava/lang/Object;
.source "UCharacterDirection.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unassigned"

    return-object p0

    :pswitch_0
    const-string p0, "Pop Directional Isolate"

    return-object p0

    :pswitch_1
    const-string p0, "Right-to-Left Isolate"

    return-object p0

    :pswitch_2
    const-string p0, "Left-to-Right Isolate"

    return-object p0

    :pswitch_3
    const-string p0, "First Strong Isolate"

    return-object p0

    :pswitch_4
    const-string p0, "Boundary Neutral"

    return-object p0

    :pswitch_5
    const-string p0, "Non-Spacing Mark"

    return-object p0

    :pswitch_6
    const-string p0, "Pop Directional Format"

    return-object p0

    :pswitch_7
    const-string p0, "Right-to-Left Override"

    return-object p0

    :pswitch_8
    const-string p0, "Right-to-Left Embedding"

    return-object p0

    :pswitch_9
    const-string p0, "Right-to-Left Arabic"

    return-object p0

    :pswitch_a
    const-string p0, "Left-to-Right Override"

    return-object p0

    :pswitch_b
    const-string p0, "Left-to-Right Embedding"

    return-object p0

    :pswitch_c
    const-string p0, "Other Neutrals"

    return-object p0

    :pswitch_d
    const-string p0, "Whitespace"

    return-object p0

    :pswitch_e
    const-string p0, "Segment Separator"

    return-object p0

    :pswitch_f
    const-string p0, "Paragraph Separator"

    return-object p0

    :pswitch_10
    const-string p0, "Common Number Separator"

    return-object p0

    :pswitch_11
    const-string p0, "Arabic Number"

    return-object p0

    :pswitch_12
    const-string p0, "European Number Terminator"

    return-object p0

    :pswitch_13
    const-string p0, "European Number Separator"

    return-object p0

    :pswitch_14
    const-string p0, "European Number"

    return-object p0

    :pswitch_15
    const-string p0, "Right-to-Left"

    return-object p0

    :pswitch_16
    const-string p0, "Left-to-Right"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
