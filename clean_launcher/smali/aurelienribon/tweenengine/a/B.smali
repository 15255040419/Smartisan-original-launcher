.class public abstract Laurelienribon/tweenengine/a/B;
.super Laurelienribon/tweenengine/n;
.source "Quad.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/B;

.field public static final Lf:Laurelienribon/tweenengine/a/B;

.field public static final OUT:Laurelienribon/tweenengine/a/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/y;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/y;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/B;->IN:Laurelienribon/tweenengine/a/B;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/z;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/z;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/B;->OUT:Laurelienribon/tweenengine/a/B;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/A;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/A;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/B;->Lf:Laurelienribon/tweenengine/a/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
