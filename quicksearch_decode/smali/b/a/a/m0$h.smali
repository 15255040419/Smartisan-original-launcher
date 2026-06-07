.class public Lb/a/a/m0$h;
.super Lb/a/a/n1/a0;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/ContentValues;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/a/a/m0$h;->a:Landroid/content/ContentValues;

    iput-object p4, p0, Lb/a/a/m0$h;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lb/a/a/n1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    .line 1
    iget-object v2, p0, Lb/a/a/m0$h;->a:Landroid/content/ContentValues;

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/m0;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/m0$h;->b:[Ljava/lang/String;

    const-string v2, "shortcuts"

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lb/a/a/m0;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lb/a/a/m0$h;->b:[Ljava/lang/String;

    const/4 v5, 0x5

    const-string v1, "shortcuts"

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
