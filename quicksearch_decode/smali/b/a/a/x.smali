.class public Lb/a/a/x;
.super Lb/a/a/w;
.source "ListSuggestionCursorNoDuplicates.java"


# instance fields
.field public final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/w;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lb/a/a/x;->i:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lb/a/a/s0;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/a/a/x;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-super {p0, p1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
