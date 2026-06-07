.class public Lb/a/a/w$a;
.super Ljava/lang/Object;
.source "ListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/Suggestion;

.field public b:Lcom/android/quicksearchbox/SuggestionExtras;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/w$a;->a:Lcom/android/quicksearchbox/Suggestion;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/quicksearchbox/Suggestion;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w$a;->a:Lcom/android/quicksearchbox/Suggestion;

    return-object v0
.end method

.method public b()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w$a;->b:Lcom/android/quicksearchbox/SuggestionExtras;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/w$a;->a:Lcom/android/quicksearchbox/Suggestion;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/w$a;->b:Lcom/android/quicksearchbox/SuggestionExtras;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/w$a;->b:Lcom/android/quicksearchbox/SuggestionExtras;

    return-object v0
.end method
