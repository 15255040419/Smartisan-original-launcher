.class public Lb/a/a/m0$c;
.super Lb/a/a/n1/z;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/z<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/a/a/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/n1/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-static {p1}, Lb/a/a/m0;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/m0$c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
