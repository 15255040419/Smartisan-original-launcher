.class public La/g/e/b$e;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:[La/g/e/b$f;


# direct methods
.method public constructor <init>(I[La/g/e/b$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La/g/e/b$e;->a:I

    .line 3
    iput-object p2, p0, La/g/e/b$e;->b:[La/g/e/b$f;

    return-void
.end method


# virtual methods
.method public a()[La/g/e/b$f;
    .locals 1

    .line 1
    iget-object v0, p0, La/g/e/b$e;->b:[La/g/e/b$f;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, La/g/e/b$e;->a:I

    return v0
.end method
