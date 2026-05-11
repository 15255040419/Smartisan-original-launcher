.class public abstract Laurelienribon/tweenengine/a/N;
.super Laurelienribon/tweenengine/n;
.source "Sine.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/N;

.field public static final Lf:Laurelienribon/tweenengine/a/N;

.field public static final OUT:Laurelienribon/tweenengine/a/N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/K;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/K;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/N;->IN:Laurelienribon/tweenengine/a/N;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/L;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/L;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/N;->OUT:Laurelienribon/tweenengine/a/N;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/M;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/M;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/N;->Lf:Laurelienribon/tweenengine/a/N;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
