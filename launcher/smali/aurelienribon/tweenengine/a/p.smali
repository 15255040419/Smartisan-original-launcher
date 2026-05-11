.class public abstract Laurelienribon/tweenengine/a/p;
.super Laurelienribon/tweenengine/n;
.source "Cubic.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/p;

.field public static final Lf:Laurelienribon/tweenengine/a/p;

.field public static final OUT:Laurelienribon/tweenengine/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/m;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/m;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/p;->IN:Laurelienribon/tweenengine/a/p;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/n;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/n;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/o;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/o;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/p;->Lf:Laurelienribon/tweenengine/a/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
