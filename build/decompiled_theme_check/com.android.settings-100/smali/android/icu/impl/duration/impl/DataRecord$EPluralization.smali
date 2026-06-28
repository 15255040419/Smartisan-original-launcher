.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EPluralization;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EPluralization"
.end annotation


# static fields
.field public static final ARABIC:B = 0x5t

.field public static final DUAL:B = 0x2t

.field public static final HEBREW:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final PAUCAL:B = 0x3t

.field public static final PLURAL:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "NONE"

    const-string v1, "PLURAL"

    const-string v2, "DUAL"

    const-string v3, "PAUCAL"

    const-string v4, "HEBREW"

    const-string v5, "ARABIC"

    .line 244
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    return-void
.end method
