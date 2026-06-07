.class public Lb/a/a/m0$a;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->a(Lb/a/a/n1/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/n1/a0;

.field public final synthetic b:Lb/a/a/m0;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Lb/a/a/n1/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m0$a;->b:Lb/a/a/m0;

    iput-object p2, p0, Lb/a/a/m0$a;->a:Lb/a/a/n1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/m0$a;->a:Lb/a/a/n1/a0;

    iget-object v1, p0, Lb/a/a/m0$a;->b:Lb/a/a/m0;

    invoke-static {v1}, Lb/a/a/m0;->a(Lb/a/a/m0;)Lb/a/a/m0$k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/n1/a0;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
