.class public final Le/a/z1/g;
.super Le/a/z1/l;
.source "Tasks.kt"


# static fields
.field public static final a:Le/a/z1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/z1/g;

    invoke-direct {v0}, Le/a/z1/g;-><init>()V

    sput-object v0, Le/a/z1/g;->a:Le/a/z1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/z1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
