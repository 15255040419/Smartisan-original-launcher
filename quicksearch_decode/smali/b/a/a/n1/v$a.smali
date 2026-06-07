.class public Lb/a/a/n1/v$a;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/v;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic a:Lcom/android/quicksearchbox/util/Consumer;

.field public final synthetic b:Lb/a/a/n1/v;


# direct methods
.method public constructor <init>(Lb/a/a/n1/v;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/v$a;->b:Lb/a/a/n1/v;

    iput-object p2, p0, Lb/a/a/n1/v$a;->a:Lcom/android/quicksearchbox/util/Consumer;

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
    iget-object v0, p0, Lb/a/a/n1/v$a;->a:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lb/a/a/n1/v$a;->b:Lb/a/a/n1/v;

    invoke-virtual {v1, p1}, Lb/a/a/n1/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
