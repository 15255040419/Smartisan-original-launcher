.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ETimeDirection"
.end annotation


# static fields
.field public static final FUTURE:B = 0x2t

.field public static final NODIRECTION:B = 0x0t

.field public static final PAST:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NODIRECTION"

    const-string v1, "PAST"

    const-string v2, "FUTURE"

    .line 216
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;->names:[Ljava/lang/String;

    return-void
.end method
