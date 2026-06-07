.class public Lb/a/a/n1/n$a;
.super Ljava/lang/Object;
.source "FixedResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/n1/n$a;->b:I

    .line 3
    iput-object p1, p0, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    return-void
.end method
