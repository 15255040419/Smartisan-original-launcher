.class public interface abstract annotation Lcom/android/settingslib/wifi/AccessPoint$Speed;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Speed"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FAST:I = 0x14

.field public static final MODERATE:I = 0xa

.field public static final NONE:I = 0x0

.field public static final SLOW:I = 0x5

.field public static final VERY_FAST:I = 0x1e
