.class public Lcom/android/quicksearchbox/SearchActivity$f;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Ljava/util/List<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$f;->c:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/quicksearchbox/SearchActivity$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$f;->c:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$f;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/quicksearchbox/SearchActivity$f;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$f;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
