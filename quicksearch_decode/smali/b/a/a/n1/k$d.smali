.class public final Lb/a/a/n1/k$d;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/k;->a(Landroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/k$d;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lb/a/a/n1/k;->a()Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/n1/k;->a()Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/n1/k$d;->a:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
