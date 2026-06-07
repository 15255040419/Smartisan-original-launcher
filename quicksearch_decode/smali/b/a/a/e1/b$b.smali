.class public Lb/a/a/e1/b$b;
.super Ljava/lang/Object;
.source "DefaultSearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/e1/b$b;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb/a/a/e1/b$b;->a:Ljava/lang/String;

    .line 4
    iput p3, p0, Lb/a/a/e1/b$b;->c:I

    return-void
.end method
