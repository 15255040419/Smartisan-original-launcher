.class public abstract Lb/a/a/n1/z;
.super Ljava/lang/Object;
.source "SQLiteAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")TA;"
        }
    .end annotation
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/n1/z;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    return-void
.end method
