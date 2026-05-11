.class Lcom/smartisanos/launcher/animations/b/j;
.super Ljava/lang/Object;
.source "SwipeAnimController.java"


# static fields
.field private static final sInstance:Lcom/smartisanos/launcher/animations/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;-><init>(Lcom/smartisanos/launcher/animations/b/b;)V

    sput-object v0, Lcom/smartisanos/launcher/animations/b/j;->sInstance:Lcom/smartisanos/launcher/animations/b/k;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/animations/b/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/b/j;->sInstance:Lcom/smartisanos/launcher/animations/b/k;

    return-object v0
.end method
