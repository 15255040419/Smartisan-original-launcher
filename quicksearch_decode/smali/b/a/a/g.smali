.class public abstract Lb/a/a/g;
.super Lb/a/a/i;
.source "AbstractSuggestionCursorWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursor;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/i;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/g;->a:Ljava/lang/String;

    return-object v0
.end method
