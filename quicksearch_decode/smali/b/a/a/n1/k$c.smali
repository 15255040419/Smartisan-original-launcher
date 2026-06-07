.class public final Lb/a/a/n1/k$c;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/android/quicksearchbox/util/Consumer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/k$c;->a:Landroid/os/Handler;

    iput-object p2, p0, Lb/a/a/n1/k$c;->b:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/k$c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lb/a/a/n1/k$c;->b:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v0, v1, p1}, Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
