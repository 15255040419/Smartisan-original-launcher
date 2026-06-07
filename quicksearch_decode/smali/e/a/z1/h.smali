.class public final Le/a/z1/h;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# static fields
.field public static final a:I

.field public static final b:Le/a/z1/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/z1/h;

    invoke-direct {v0}, Le/a/z1/h;-><init>()V

    sput-object v0, Le/a/z1/h;->b:Le/a/z1/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTask()V
    .locals 0

    return-void
.end method

.method public getTaskMode()I
    .locals 1

    .line 1
    sget v0, Le/a/z1/h;->a:I

    return v0
.end method
