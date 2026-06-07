.class public Lb/a/a/m0$g;
.super Lb/a/a/n1/z;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/z<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/m0;


# direct methods
.method public constructor <init>(Lb/a/a/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m0$g;->a:Lb/a/a/m0;

    invoke-direct {p0}, Lb/a/a/n1/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/m0$g;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lb/a/a/m0$g;->a:Lb/a/a/m0;

    invoke-static {p1}, Lb/a/a/m0;->b(Lb/a/a/m0;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
