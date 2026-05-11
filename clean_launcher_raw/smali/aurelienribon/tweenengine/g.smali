.class synthetic Laurelienribon/tweenengine/g;
.super Ljava/lang/Object;
.source "Timeline.java"


# static fields
.field static final synthetic Jf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Laurelienribon/tweenengine/Timeline$Modes;->values()[Laurelienribon/tweenengine/Timeline$Modes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laurelienribon/tweenengine/g;->Jf:[I

    :try_start_0
    sget-object v0, Laurelienribon/tweenengine/g;->Jf:[I

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Laurelienribon/tweenengine/g;->Jf:[I

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->MY:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
