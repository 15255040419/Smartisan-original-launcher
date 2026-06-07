.class public final Lb/a/a/n1/k$b;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/util/Consumer;

.field public final synthetic b:Lcom/android/quicksearchbox/util/QuietlyCloseable;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/k$b;->a:Lcom/android/quicksearchbox/util/Consumer;

    iput-object p2, p0, Lb/a/a/n1/k$b;->b:Lcom/android/quicksearchbox/util/QuietlyCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/n1/k$b;->a:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lb/a/a/n1/k$b;->b:Lcom/android/quicksearchbox/util/QuietlyCloseable;

    invoke-static {v0, v1}, Lb/a/a/n1/k;->a(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    return-void
.end method
