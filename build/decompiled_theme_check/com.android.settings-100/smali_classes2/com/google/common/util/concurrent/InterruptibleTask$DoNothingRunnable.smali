.class final Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;
.super Ljava/lang/Object;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoNothingRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
