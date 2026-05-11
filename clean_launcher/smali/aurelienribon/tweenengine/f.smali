.class Laurelienribon/tweenengine/f;
.super Laurelienribon/tweenengine/d;
.source "Timeline.java"


# direct methods
.method constructor <init>(ILaurelienribon/tweenengine/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Laurelienribon/tweenengine/d;-><init>(ILaurelienribon/tweenengine/c;)V

    return-void
.end method


# virtual methods
.method protected create()Laurelienribon/tweenengine/h;
    .locals 1

    .line 2
    new-instance p0, Laurelienribon/tweenengine/h;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/h;-><init>(Laurelienribon/tweenengine/e;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/f;->create()Laurelienribon/tweenengine/h;

    move-result-object p0

    return-object p0
.end method
