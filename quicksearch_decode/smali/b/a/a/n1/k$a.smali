.class public final Lb/a/a/n1/k$a;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/util/Consumer;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/k$a;->a:Lcom/android/quicksearchbox/util/Consumer;

    iput-object p2, p0, Lb/a/a/n1/k$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/n1/k$a;->a:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lb/a/a/n1/k$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    return-void
.end method
