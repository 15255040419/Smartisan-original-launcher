.class public final Lf/z/m/a$d;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lg/d;

.field public final c:J


# direct methods
.method public constructor <init>(ILg/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/z/m/a$d;->a:I

    .line 3
    iput-object p2, p0, Lf/z/m/a$d;->b:Lg/d;

    .line 4
    iput-wide p3, p0, Lf/z/m/a$d;->c:J

    return-void
.end method
