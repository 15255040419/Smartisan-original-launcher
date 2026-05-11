.class Lcom/smartisanos/launcher/Pa;
.super Ljava/lang/Object;
.source "Launchpad.java"


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field public final mTouchableInsets:I

.field public final touchableRegion:Landroid/graphics/Region;

.field public final visibleInsets:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/Pa;->contentInsets:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/Pa;->visibleInsets:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/Pa;->touchableRegion:Landroid/graphics/Region;

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/Pa;->mTouchableInsets:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/Fa;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/Pa;-><init>()V

    return-void
.end method
