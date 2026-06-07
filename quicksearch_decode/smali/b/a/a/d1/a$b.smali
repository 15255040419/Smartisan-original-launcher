.class public Lb/a/a/d1/a$b;
.super Ljava/lang/Object;
.source "T9SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lb/a/a/d1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/d1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/d1/a;-><init>(Lb/a/a/d1/a$a;)V

    sput-object v0, Lb/a/a/d1/a$b;->a:Lb/a/a/d1/a;

    return-void
.end method

.method public static synthetic a()Lb/a/a/d1/a;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/d1/a$b;->a:Lb/a/a/d1/a;

    return-object v0
.end method
