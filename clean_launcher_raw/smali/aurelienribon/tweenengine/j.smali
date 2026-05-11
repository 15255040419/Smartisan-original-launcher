.class Laurelienribon/tweenengine/j;
.super Laurelienribon/tweenengine/d;
.source "Tween.java"


# direct methods
.method constructor <init>(ILaurelienribon/tweenengine/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Laurelienribon/tweenengine/d;-><init>(ILaurelienribon/tweenengine/c;)V

    return-void
.end method


# virtual methods
.method protected create()Laurelienribon/tweenengine/k;
    .locals 1

    .line 2
    new-instance p0, Laurelienribon/tweenengine/k;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/k;-><init>(Laurelienribon/tweenengine/i;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/j;->create()Laurelienribon/tweenengine/k;

    move-result-object p0

    return-object p0
.end method
