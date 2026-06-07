.class public Lb/a/a/m0$b;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->a(Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/n1/z;

.field public final synthetic b:Lcom/android/quicksearchbox/util/Consumer;

.field public final synthetic c:Lb/a/a/m0;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m0$b;->c:Lb/a/a/m0;

    iput-object p2, p0, Lb/a/a/m0$b;->a:Lb/a/a/n1/z;

    iput-object p3, p0, Lb/a/a/m0$b;->b:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/m0$b;->a:Lb/a/a/n1/z;

    iget-object v1, p0, Lb/a/a/m0$b;->c:Lb/a/a/m0;

    invoke-static {v1}, Lb/a/a/m0;->a(Lb/a/a/m0;)Lb/a/a/m0$k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/m0$b;->b:Lcom/android/quicksearchbox/util/Consumer;

    invoke-virtual {v0, v1, v2}, Lb/a/a/n1/z;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method
