.class public Lcom/smartisanos/launcher/a/a/e;
.super Ljava/lang/Object;
.source "SmartisanosGestureController.java"


# static fields
.field private static SM_PRIVATE_FLAG_DISABLE_OVERVIEW_GESTURE:I

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/a/e;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/a/e;->log:Lcom/smartisanos/launcher/va;

    const v0, 0x8000

    .line 2
    sput v0, Lcom/smartisanos/launcher/a/a/e;->SM_PRIVATE_FLAG_DISABLE_OVERVIEW_GESTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/a/e;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/a/a/e;->SM_PRIVATE_FLAG_DISABLE_OVERVIEW_GESTURE:I

    return v0
.end method

.method public static z(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/a/a/d;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/a/d;-><init>(Z)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method
