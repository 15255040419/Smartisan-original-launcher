.class public final Lb/c/a/c/x0$d;
.super Lb/c/a/c/u;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/u<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Lb/c/a/c/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/v1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/c/a/c/x0$d;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lb/c/a/c/x0$d;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lb/c/a/c/x0$d;->e:Lb/c/a/c/v1;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lb/c/a/c/u;-><init>(II)V

    .line 2
    iput-object p1, p0, Lb/c/a/c/x0$d;->c:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lb/c/a/c/x0$d;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/x0$d;->c:[Ljava/lang/Object;

    iget v1, p0, Lb/c/a/c/x0$d;->d:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
