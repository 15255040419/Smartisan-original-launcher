.class public abstract Laurelienribon/tweenengine/a/d;
.super Laurelienribon/tweenengine/n;
.source "Back.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/d;

.field public static final Lf:Laurelienribon/tweenengine/a/d;

.field public static final OUT:Laurelienribon/tweenengine/a/d;


# instance fields
.field protected Kf:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/a;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/a;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/d;->IN:Laurelienribon/tweenengine/a/d;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/b;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/b;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/d;->OUT:Laurelienribon/tweenengine/a/d;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/c;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/c;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/d;->Lf:Laurelienribon/tweenengine/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    const v0, 0x3fd9cd60

    .line 2
    iput v0, p0, Laurelienribon/tweenengine/a/d;->Kf:F

    return-void
.end method


# virtual methods
.method public i(F)Laurelienribon/tweenengine/a/d;
    .locals 0

    .line 1
    iput p1, p0, Laurelienribon/tweenengine/a/d;->Kf:F

    return-object p0
.end method
