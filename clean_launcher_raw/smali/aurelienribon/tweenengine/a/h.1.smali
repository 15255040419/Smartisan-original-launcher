.class public abstract Laurelienribon/tweenengine/a/h;
.super Laurelienribon/tweenengine/n;
.source "Bounce.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/h;

.field public static final Lf:Laurelienribon/tweenengine/a/h;

.field public static final OUT:Laurelienribon/tweenengine/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/e;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/e;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/h;->IN:Laurelienribon/tweenengine/a/h;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/f;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/f;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/h;->OUT:Laurelienribon/tweenengine/a/h;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/g;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/g;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/h;->Lf:Laurelienribon/tweenengine/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
