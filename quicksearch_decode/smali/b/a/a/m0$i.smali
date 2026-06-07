.class public Lb/a/a/m0$i;
.super Lb/a/a/n1/a0;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->a(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/ContentValues;

.field public final synthetic b:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/a/a/m0$i;->a:Landroid/content/ContentValues;

    iput-object p3, p0, Lb/a/a/m0$i;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Lb/a/a/n1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/m0$i;->a:Landroid/content/ContentValues;

    const/4 v1, 0x0

    const-string v2, "shortcuts"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2
    iget-object v0, p0, Lb/a/a/m0$i;->b:Landroid/content/ContentValues;

    const-string v2, "clicklog"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 p1, 0x1

    return p1
.end method
