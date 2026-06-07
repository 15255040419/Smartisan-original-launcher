.class public final Lf/z/i/i$a;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Lf/z/i/i$a;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lf/z/i/i$a;

    .line 2
    iput-object v0, p0, Lf/z/i/i$a;->a:[Lf/z/i/i$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/z/i/i$a;->b:I

    .line 4
    iput v0, p0, Lf/z/i/i$a;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lf/z/i/i$a;->a:[Lf/z/i/i$a;

    .line 7
    iput p1, p0, Lf/z/i/i$a;->b:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 8
    :cond_0
    iput p1, p0, Lf/z/i/i$a;->c:I

    return-void
.end method
