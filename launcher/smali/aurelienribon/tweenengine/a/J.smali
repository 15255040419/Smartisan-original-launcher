.class public abstract Laurelienribon/tweenengine/a/J;
.super Laurelienribon/tweenengine/n;
.source "Quint.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/J;

.field public static final Lf:Laurelienribon/tweenengine/a/J;

.field public static final OUT:Laurelienribon/tweenengine/a/J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/G;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/G;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/J;->IN:Laurelienribon/tweenengine/a/J;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/H;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/H;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/J;->OUT:Laurelienribon/tweenengine/a/J;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/I;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/I;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/J;->Lf:Laurelienribon/tweenengine/a/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
