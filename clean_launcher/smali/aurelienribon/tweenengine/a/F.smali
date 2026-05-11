.class public abstract Laurelienribon/tweenengine/a/F;
.super Laurelienribon/tweenengine/n;
.source "Quart.java"


# static fields
.field public static final IN:Laurelienribon/tweenengine/a/F;

.field public static final Lf:Laurelienribon/tweenengine/a/F;

.field public static final OUT:Laurelienribon/tweenengine/a/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laurelienribon/tweenengine/a/C;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/C;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/F;->IN:Laurelienribon/tweenengine/a/F;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/a/D;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/D;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/F;->OUT:Laurelienribon/tweenengine/a/F;

    .line 3
    new-instance v0, Laurelienribon/tweenengine/a/E;

    invoke-direct {v0}, Laurelienribon/tweenengine/a/E;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/a/F;->Lf:Laurelienribon/tweenengine/a/F;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method
