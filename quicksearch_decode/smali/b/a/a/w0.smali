.class public Lb/a/a/w0;
.super Lb/a/a/i;
.source "SuggestionPosition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/i;",
        "Ljava/lang/Comparable<",
        "Lb/a/a/w0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/SuggestionCursor;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lb/a/a/i;-><init>()V

    .line 5
    iput-object p1, p0, Lb/a/a/w0;->a:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 6
    iput p2, p0, Lb/a/a/w0;->b:I

    .line 7
    iput-wide p3, p0, Lb/a/a/w0;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;J)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/w0;)I
    .locals 4

    .line 3
    invoke-virtual {p1}, Lb/a/a/w0;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/a/w0;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/quicksearchbox/Suggestion;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/w0;->a:Lcom/android/quicksearchbox/SuggestionCursor;

    iget v1, p0, Lb/a/a/w0;->b:I

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 2
    iget-object v0, p0, Lb/a/a/w0;->a:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/w0;->c:J

    return-wide v0
.end method

.method public c()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w0;->a:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/w0;

    invoke-virtual {p0, p1}, Lb/a/a/w0;->a(Lb/a/a/w0;)I

    move-result p1

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/w0;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/w0;->a:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/w0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
